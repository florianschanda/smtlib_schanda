;; produced by cvc4_14.drv ;;
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.5)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
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

(declare-fun pow2 (Int) Int)

(define-fun to_nearest ((m RoundingMode)) Bool (or (= m RNE) (= m RNA)))

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float32)

(declare-fun to_int1 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                     (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float32) Bool)

(define-fun neq ((x Float32) (y Float32)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort float 0)

(declare-fun user_eq (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Float32)

(declare-fun dummy () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-fun to_rep (float) Float32)

(declare-fun of_rep (Float32) float)

;; inversion_axiom
  (assert
  (forall ((x float)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x float))
  (! (not (or (fp.isInfinite (to_rep x)) (fp.isNaN (to_rep x)))) :pattern (
  (to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x))) (= (to_rep (of_rep x)) x)) :pattern (
  (to_rep (of_rep x))) )))

(declare-sort speed_t 0)

(declare-fun user_eq1 (speed_t speed_t) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy1 () speed_t)

(declare-datatypes ()
((speed_t__ref (mk_speed_t__ref (speed_t__content speed_t)))))
(define-fun speed_t__ref___projection ((a speed_t__ref)) speed_t (speed_t__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_151 Float32)
  (temp___is_init_148 Bool) (temp___skip_constant_149 Bool)
  (temp___do_toplevel_150 Bool)) Bool (=>
                                      (or (= temp___is_init_148 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_151) (fp.isNaN temp___expr_151)))))

(declare-sort num_delimiters_range 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 10)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (num_delimiters_range num_delimiters_range) Bool)

(declare-fun dummy2 () num_delimiters_range)

(declare-datatypes ()
((num_delimiters_range__ref
 (mk_num_delimiters_range__ref
 (num_delimiters_range__content num_delimiters_range)))))
(define-fun num_delimiters_range__ref___projection ((a num_delimiters_range__ref)) num_delimiters_range 
  (num_delimiters_range__content a))

(declare-fun to_rep1 (num_delimiters_range) Int)

(declare-fun of_rep1 (Int) num_delimiters_range)

;; inversion_axiom
  (assert
  (forall ((x num_delimiters_range))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x num_delimiters_range)) (! (in_range1
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort function_range 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (function_range function_range) Bool)

(declare-fun dummy3 () function_range)

(declare-datatypes ()
((function_range__ref
 (mk_function_range__ref (function_range__content function_range)))))
(define-fun function_range__ref___projection ((a function_range__ref)) function_range 
  (function_range__content a))

(declare-fun to_rep2 (function_range) Int)

(declare-fun of_rep2 (Int) function_range)

;; inversion_axiom
  (assert
  (forall ((x function_range))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x function_range)) (! (in_range2
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__step_function__delimiter_entry__delimiter function_range)(rec__step_function__delimiter_entry__value float)))))
(define-fun us_split_fields_Delimiter__projection ((a us_split_fields)) function_range 
  (rec__step_function__delimiter_entry__delimiter a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep2
                           (rec__step_function__delimiter_entry__delimiter
                           (us_split_fields1 a))) (to_rep2
                                                  (rec__step_function__delimiter_entry__delimiter
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__step_function__delimiter_entry__value
                           (us_split_fields1 a))) (to_rep
                                                  (rec__step_function__delimiter_entry__value
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq4 (us_rep us_rep) Bool)

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

(declare-fun step_function__delimiter_entry__delimiter__first__bit () Int)

(declare-fun step_function__delimiter_entry__delimiter__last__bit () Int)

(declare-fun step_function__delimiter_entry__delimiter__position () Int)

;; step_function__delimiter_entry__delimiter__first__bit_axiom
  (assert (<= 0 step_function__delimiter_entry__delimiter__first__bit))

;; step_function__delimiter_entry__delimiter__last__bit_axiom
  (assert
  (< step_function__delimiter_entry__delimiter__first__bit step_function__delimiter_entry__delimiter__last__bit))

;; step_function__delimiter_entry__delimiter__position_axiom
  (assert (<= 0 step_function__delimiter_entry__delimiter__position))

(declare-fun step_function__delimiter_entry__value__first__bit () Int)

(declare-fun step_function__delimiter_entry__value__last__bit () Int)

(declare-fun step_function__delimiter_entry__value__position () Int)

;; step_function__delimiter_entry__value__first__bit_axiom
  (assert (<= 0 step_function__delimiter_entry__value__first__bit))

;; step_function__delimiter_entry__value__last__bit_axiom
  (assert
  (< step_function__delimiter_entry__value__first__bit step_function__delimiter_entry__value__last__bit))

;; step_function__delimiter_entry__value__position_axiom
  (assert (<= 0 step_function__delimiter_entry__value__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes ()
((delimiter_entry__ref
 (mk_delimiter_entry__ref (delimiter_entry__content us_rep)))))
(define-fun delimiter_entry__ref___projection ((a delimiter_entry__ref)) us_rep 
  (delimiter_entry__content a))

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

(define-fun bool_eq1 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
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
                           (= (bool_eq (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq1 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(declare-fun dummy5 () (Array Int us_rep))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int us_rep)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int us_rep)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int us_rep)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int us_rep))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int us_rep))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int us_rep))) (<= 0 (object__alignment1 a))))

(declare-fun user_eq5 ((Array Int us_rep) (Array Int us_rep)) Bool)

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__step_function__step_function_t__number_of_delimiters num_delimiters_range)(rec__step_function__step_function_t__step (Array Int us_rep))))))
(define-fun us_split_fields_Number_Of_Delimiters__projection ((a us_split_fields2)) num_delimiters_range 
  (rec__step_function__step_function_t__number_of_delimiters a))

(define-fun us_split_fields_Step__projection ((a us_split_fields2)) (Array Int us_rep) 
  (rec__step_function__step_function_t__step a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq2 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep1
                            (rec__step_function__step_function_t__number_of_delimiters
                            (us_split_fields3 a))) (to_rep1
                                                   (rec__step_function__step_function_t__number_of_delimiters
                                                   (us_split_fields3 b))))
                         (= (bool_eq1
                            (rec__step_function__step_function_t__step
                            (us_split_fields3 a)) 0 10
                            (rec__step_function__step_function_t__step
                            (us_split_fields3 b)) 0 10) true))
                    true false))

(declare-fun user_eq6 (us_rep1 us_rep1) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep1) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))

(declare-fun step_function__step_function_t__number_of_delimiters__first__bit () Int)

(declare-fun step_function__step_function_t__number_of_delimiters__last__bit () Int)

(declare-fun step_function__step_function_t__number_of_delimiters__position () Int)

;; step_function__step_function_t__number_of_delimiters__first__bit_axiom
  (assert
  (<= 0 step_function__step_function_t__number_of_delimiters__first__bit))

;; step_function__step_function_t__number_of_delimiters__last__bit_axiom
  (assert
  (< step_function__step_function_t__number_of_delimiters__first__bit 
  step_function__step_function_t__number_of_delimiters__last__bit))

;; step_function__step_function_t__number_of_delimiters__position_axiom
  (assert
  (<= 0 step_function__step_function_t__number_of_delimiters__position))

(declare-fun step_function__step_function_t__step__first__bit () Int)

(declare-fun step_function__step_function_t__step__last__bit () Int)

(declare-fun step_function__step_function_t__step__position () Int)

;; step_function__step_function_t__step__first__bit_axiom
  (assert (<= 0 step_function__step_function_t__step__first__bit))

;; step_function__step_function_t__step__last__bit_axiom
  (assert
  (< step_function__step_function_t__step__first__bit step_function__step_function_t__step__last__bit))

;; step_function__step_function_t__step__position_axiom
  (assert (<= 0 step_function__step_function_t__step__position))

(declare-fun dummy6 () us_rep1)

(declare-datatypes ()
((step_function_t__ref
 (mk_step_function_t__ref (step_function_t__content us_rep1)))))
(define-fun step_function_t__ref___projection ((a step_function_t__ref)) us_rep1 
  (step_function_t__content a))

(declare-fun get_value (us_rep1 Int) Float32)

(declare-fun get_value__function_guard (Float32 us_rep1 Int) Bool)

(define-fun dynamic_invariant1 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(define-fun dynamic_invariant2 ((temp___expr_193 Int)
  (temp___is_init_190 Bool) (temp___skip_constant_191 Bool)
  (temp___do_toplevel_192 Bool)) Bool (=>
                                      (or (= temp___is_init_190 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_193)))

(declare-fun is_valid (us_rep1) Bool)

(declare-fun is_valid__function_guard (Bool us_rep1) Bool)

;; get_value__post_axiom
  (assert
  (forall ((sfun us_rep1))
  (forall ((x Int))
  (! (=> (and (dynamic_invariant2 x true true true) (= (is_valid sfun) true))
     (let ((result (get_value sfun x)))
     (and
     (or
     (exists ((i Int))
     (and
     (and (<= 0 i)
     (<= i (- (to_rep1
              (rec__step_function__step_function_t__number_of_delimiters
              (us_split_fields3 sfun))) 1)))
     (and
     (and
     (<= (to_rep2
         (rec__step_function__delimiter_entry__delimiter
         (us_split_fields1
         (let ((temp___250 (rec__step_function__step_function_t__step
                           (us_split_fields3 sfun))))
         (select temp___250 i))))) x)
     (< x (to_rep2
          (rec__step_function__delimiter_entry__delimiter
          (us_split_fields1
          (let ((temp___251 (rec__step_function__step_function_t__step
                            (us_split_fields3 sfun))))
          (select temp___251 (+ i 1))))))))
     (fp.eq result (to_rep
                   (rec__step_function__delimiter_entry__value
                   (us_split_fields1
                   (let ((temp___252 (rec__step_function__step_function_t__step
                                     (us_split_fields3 sfun))))
                   (select temp___252 i)))))))))
     (and
     (<= (to_rep2
         (rec__step_function__delimiter_entry__delimiter
         (us_split_fields1
         (let ((temp___253 (rec__step_function__step_function_t__step
                           (us_split_fields3 sfun))))
         (select temp___253 (to_rep1
                            (rec__step_function__step_function_t__number_of_delimiters
                            (us_split_fields3 sfun)))))))) x)
     (fp.eq result (to_rep
                   (rec__step_function__delimiter_entry__value
                   (us_split_fields1
                   (let ((temp___254 (rec__step_function__step_function_t__step
                                     (us_split_fields3 sfun))))
                   (select temp___254 (to_rep1
                                      (rec__step_function__step_function_t__number_of_delimiters
                                      (us_split_fields3 sfun)))))))))))
     (dynamic_invariant1 result true false true)))) :pattern ((get_value sfun
                                                              x)) ))))

(declare-fun kdry_rst_model () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun temp___138 (us_rep us_rep) (Array Int us_rep))

;; def_axiom
  (assert
  (forall ((temp___140 us_rep) (temp___141 us_rep))
  (let ((temp___139 (temp___138 temp___140 temp___141)))
  (forall ((temp___142 Int))
  (ite (= temp___142 0) (= (select temp___139 temp___142) temp___140)
  (= (select temp___139 temp___142) temp___141))))))

(declare-fun is_valid_kdry_rst (tuple0) Bool)

(declare-fun is_valid_kdry_rst__function_guard (Bool tuple0) Bool)

(declare-fun has_same_delimiters (us_rep1 us_rep1) Bool)

(declare-fun has_same_delimiters__function_guard (Bool us_rep1 us_rep1) Bool)

(declare-fun a_brake_emergency_model () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

;; is_valid_kdry_rst__post_axiom
  (assert true)

;; is_valid_kdry_rst__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (= (= (is_valid_kdry_rst us_void_param) true)
     (and (= (is_valid kdry_rst_model) true)
     (= (has_same_delimiters kdry_rst_model a_brake_emergency_model) true))) :pattern (
  (is_valid_kdry_rst us_void_param)) )))

(declare-fun v () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun temp___133 (us_rep us_rep) (Array Int us_rep))

;; def_axiom
  (assert
  (forall ((temp___135 us_rep) (temp___136 us_rep))
  (let ((temp___134 (temp___133 temp___135 temp___136)))
  (forall ((temp___137 Int))
  (ite (= temp___137 0) (= (select temp___134 temp___137) temp___135)
  (= (select temp___134 temp___137) temp___136))))))

;; a_brake_emergency_model__def_axiom
  (assert
  (= a_brake_emergency_model (mk___rep1
                             (mk___split_fields1 (of_rep1 0)
                             (temp___133
                             (mk___rep
                             (mk___split_fields (of_rep2 0)
                             (of_rep
                             (fp #b0 #b01111111 #b00000000000000000000000))))
                             (mk___rep
                             (mk___split_fields (of_rep2 0)
                             (of_rep
                             (fp #b0 #b00000000 #b00000000000000000000000)))))))))

;; kdry_rst_model__def_axiom
  (assert
  (= kdry_rst_model (mk___rep1
                    (mk___split_fields1 (of_rep1 0)
                    (temp___138
                    (mk___rep
                    (mk___split_fields (of_rep2 0)
                    (of_rep (fp #b0 #b01111111 #b00000000000000000000000))))
                    (mk___rep
                    (mk___split_fields (of_rep2 0)
                    (of_rep (fp #b0 #b00000000 #b00000000000000000000000)))))))))

(define-fun dynamic_invariant3 ((temp___expr_187 Int)
  (temp___is_init_184 Bool) (temp___skip_constant_185 Bool)
  (temp___do_toplevel_186 Bool)) Bool (=>
                                      (or (= temp___is_init_184 true)
                                      (<= 0 10)) (in_range1 temp___expr_187)))

;; is_valid__post_axiom
  (assert true)

;; is_valid__def_axiom
  (assert
  (forall ((sfun us_rep1))
  (! (= (= (is_valid sfun) true)
     (and
     (= (to_rep2
        (rec__step_function__delimiter_entry__delimiter
        (us_split_fields1
        (let ((temp___233 (rec__step_function__step_function_t__step
                          (us_split_fields3 sfun))))
        (select temp___233 0))))) 0)
     (forall ((i Int))
     (=>
     (and (<= 0 i)
     (<= i (- (to_rep1
              (rec__step_function__step_function_t__number_of_delimiters
              (us_split_fields3 sfun))) 1)))
     (< (to_rep2
        (rec__step_function__delimiter_entry__delimiter
        (us_split_fields1
        (let ((temp___235 (rec__step_function__step_function_t__step
                          (us_split_fields3 sfun))))
        (select temp___235 i))))) (to_rep2
                                  (rec__step_function__delimiter_entry__delimiter
                                  (us_split_fields1
                                  (let ((temp___234 (rec__step_function__step_function_t__step
                                                    (us_split_fields3 sfun))))
                                  (select temp___234 (+ i 1))))))))))) :pattern (
  (is_valid sfun)) )))

;; has_same_delimiters__post_axiom
  (assert true)

;; has_same_delimiters__def_axiom
  (assert
  (forall ((sfun1 us_rep1) (sfun2 us_rep1))
  (! (= (= (has_same_delimiters sfun1 sfun2) true)
     (and
     (= (to_rep1
        (rec__step_function__step_function_t__number_of_delimiters
        (us_split_fields3 sfun1))) (to_rep1
                                   (rec__step_function__step_function_t__number_of_delimiters
                                   (us_split_fields3 sfun2))))
     (forall ((i Int))
     (=>
     (and (<= 1 i)
     (<= i (to_rep1
           (rec__step_function__step_function_t__number_of_delimiters
           (us_split_fields3 sfun1)))))
     (= (to_rep2
        (rec__step_function__delimiter_entry__delimiter
        (us_split_fields1
        (let ((temp___242 (rec__step_function__step_function_t__step
                          (us_split_fields3 sfun1))))
        (select temp___242 i))))) (to_rep2
                                  (rec__step_function__delimiter_entry__delimiter
                                  (us_split_fields1
                                  (let ((temp___243 (rec__step_function__step_function_t__step
                                                    (us_split_fields3 sfun2))))
                                  (select temp___243 i)))))))))) :pattern (
  (has_same_delimiters sfun1 sfun2)) )))

(declare-fun sec_3_13_2_monitoring_inputs__kdry_rst__result () Float32)

(declare-fun o () float)

(declare-fun o1 () function_range)

(declare-fun o2 () function_range)

(declare-fun o3 () float)

(declare-fun o4 () float)

(declare-fun o5 () function_range)

(declare-fun o6 () function_range)

(declare-fun o7 () float)

(declare-fun o8 () function_range)

(declare-fun o9 () float)

(declare-fun o10 () function_range)

(declare-fun o11 () float)

(declare-fun o12 () (Array Int us_rep))

(declare-fun o13 () num_delimiters_range)

(declare-fun o14 () num_delimiters_range)

(declare-fun o15 () (Array Int us_rep))

(declare-fun temp___316 () num_delimiters_range)

(declare-fun temp___3161 () (Array Int us_rep))

(declare-fun o16 () Int)

(declare-fun o17 () Float32)

(declare-fun o18 () Int)

(declare-fun result () Float32)

(declare-fun sec_3_13_2_monitoring_inputs__kdry_rst__result1 () Float32)

(declare-fun sec_3_13_2_monitoring_inputs__kdry_rst__result2 () Float32)

(declare-fun sec_3_13_2_monitoring_inputs__kdry_rst__result3 () Float32)

(declare-fun sec_3_13_2_monitoring_inputs__kdry_rst__result4 () Float32)

(declare-fun sec_3_13_2_monitoring_inputs__kdry_rst__result5 () Float32)

;; H
  (assert (= (to_rep o4) (fp #b0 #b00000000 #b00000000000000000000000)))

;; H
  (assert (= (to_rep2 o5) 0))

;; H
  (assert (= o5 o6))

;; H
  (assert (= o4 o7))

;; H
  (assert (= o8 o6))

;; H
  (assert (= o9 o7))

;; H
  (assert (= (to_rep o) (fp #b0 #b01111111 #b00000000000000000000000)))

;; H
  (assert (= (to_rep2 o1) 0))

;; H
  (assert (= o1 o2))

;; H
  (assert (= o o3))

;; H
  (assert (= o10 o2))

;; H
  (assert (= o11 o3))

;; H
  (assert
  (= o12 (temp___138 (mk___rep (mk___split_fields o10 o11))
         (mk___rep (mk___split_fields o8 o9)))))

;; H
  (assert (= (to_rep1 o13) 0))

;; H
  (assert (= o13 o14))

;; H
  (assert (= o12 o15))

;; H
  (assert (= temp___316 o14))

;; H
  (assert (= temp___3161 o15))

;; H
  (assert
  (= (mk___rep1 (mk___split_fields1 temp___316 temp___3161)) kdry_rst_model))

;; H
  (assert (not (or (fp.isInfinite v) (fp.isNaN v))))

;; H
  (assert (= (is_valid_kdry_rst Tuple0) true))

;; H
  (assert
  (= sec_3_13_2_monitoring_inputs__kdry_rst__result1 sec_3_13_2_monitoring_inputs__kdry_rst__result2))

;; H
  (assert
  (= sec_3_13_2_monitoring_inputs__kdry_rst__result3 sec_3_13_2_monitoring_inputs__kdry_rst__result1))

;; H
  (assert (and (= o16 (to_int1 RNA v)) (in_range2 (to_int1 RNA v))))

;; H
  (assert
  (and (= o17 (get_value kdry_rst_model o16))
  (and (not (or (fp.isInfinite o17) (fp.isNaN o17)))
  (or
  (exists ((i Int))
  (and
  (and (<= 0 i)
  (<= i (- (to_rep1
           (rec__step_function__step_function_t__number_of_delimiters
           (us_split_fields3 kdry_rst_model))) 1)))
  (and
  (and
  (<= (to_rep2
      (rec__step_function__delimiter_entry__delimiter
      (us_split_fields1
      (select (rec__step_function__step_function_t__step
              (us_split_fields3 kdry_rst_model)) i)))) o16)
  (< o16 (to_rep2
         (rec__step_function__delimiter_entry__delimiter
         (us_split_fields1
         (select (rec__step_function__step_function_t__step
                 (us_split_fields3 kdry_rst_model)) (+ i 1)))))))
  (fp.eq o17 (to_rep
             (rec__step_function__delimiter_entry__value
             (us_split_fields1
             (select (rec__step_function__step_function_t__step
                     (us_split_fields3 kdry_rst_model)) i))))))))
  (and
  (<= (to_rep2
      (rec__step_function__delimiter_entry__delimiter
      (us_split_fields1
      (select (rec__step_function__step_function_t__step
              (us_split_fields3 kdry_rst_model)) (to_rep1
                                                 (rec__step_function__step_function_t__number_of_delimiters
                                                 (us_split_fields3
                                                 kdry_rst_model))))))) 
  o16)
  (fp.eq o17 (to_rep
             (rec__step_function__delimiter_entry__value
             (us_split_fields1
             (select (rec__step_function__step_function_t__step
                     (us_split_fields3 kdry_rst_model)) (to_rep1
                                                        (rec__step_function__step_function_t__number_of_delimiters
                                                        (us_split_fields3
                                                        kdry_rst_model)))))))))))))

;; H
  (assert
  (= (mk_t__ref result) (mk_t__ref
                        sec_3_13_2_monitoring_inputs__kdry_rst__result)))

;; H
  (assert (= sec_3_13_2_monitoring_inputs__kdry_rst__result1 o17))

;; H
  (assert
  (= (mk_t__ref sec_3_13_2_monitoring_inputs__kdry_rst__result4) (mk_t__ref
                                                                 sec_3_13_2_monitoring_inputs__kdry_rst__result2)))

;; H
  (assert
  (= sec_3_13_2_monitoring_inputs__kdry_rst__result5 sec_3_13_2_monitoring_inputs__kdry_rst__result3))

;; H
  (assert (and (= o18 (to_int1 RNA v)) (in_range2 (to_int1 RNA v))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (= (is_valid kdry_rst_model) true)))
(check-sat)
