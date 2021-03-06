(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFBVDTLIRA)
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
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(declare-fun nth ((_ BitVec 8) Int) Bool)
(declare-fun lsr ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun asr ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun lsl ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun rotate_right1 ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun rotate_left1 ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun pow2 (Int) Int)
(define-fun to_int1 ((x (_ BitVec 8))) Int (ite (bvsge x (_ bv0 8)) (bv2nat x) (- (- 256 (bv2nat x)))))
(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 255)))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvlshr x n) (lsr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvashr x n) (asr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvshl x n) (lsl x (bv2nat n)))))
(assert (forall ((v (_ BitVec 8)) (n (_ BitVec 8))) (= (bvor (bvshl v (bvurem n (_ bv8 8))) (bvlshr v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) (rotate_left1 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 8)) (n (_ BitVec 8))) (= (bvor (bvlshr v (bvurem n (_ bv8 8))) (bvshl v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) (rotate_right1 v (bv2nat n)))))
(declare-fun nth_bv ((_ BitVec 8) (_ BitVec 8)) Bool)
(assert (forall ((x (_ BitVec 8)) (i (_ BitVec 8))) (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x01) #x00)))))
(assert (forall ((x (_ BitVec 8)) (i (_ BitVec 8))) (= (nth x (bv2nat i)) (nth_bv x i))))
(assert (forall ((x (_ BitVec 8)) (i Int)) (=> (and (<= 0 i) (< i 256)) (= (nth_bv x ((_ int2bv 8) i)) (nth x i)))))
(declare-fun eq_sub_bv ((_ BitVec 8) (_ BitVec 8) (_ BitVec 8) (_ BitVec 8)) Bool)
(assert (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8)) (n (_ BitVec 8))) (let ((mask (bvshl (bvsub (bvshl #x01 n) #x01) i))) (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub ((a (_ BitVec 8)) (b (_ BitVec 8)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))
(assert (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8)) (n (_ BitVec 8))) (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))
(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 8))))))
(declare-fun power ((_ BitVec 8) Int) (_ BitVec 8))
(define-fun bv_min ((x (_ BitVec 8)) (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) x y))
(define-fun bv_max ((x (_ BitVec 8)) (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) y x))
(declare-sort message_index 0)
(define-fun in_range1 ((x (_ BitVec 8))) Bool (and (bvule #x00 x) (bvule x #x0F)))
(define-fun in_range_int ((x Int)) Bool (and (<= 0 x) (<= x 15)))
(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 8)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 8))
(declare-fun user_eq1 (message_index message_index) Bool)
(declare-const dummy1 message_index)
(declare-datatypes () ((message_index__ref (mk_message_index__ref (message_index__content message_index)))))
(define-fun message_index__ref___projection ((a message_index__ref)) message_index (message_index__content a))
(declare-sort message_count 0)
(declare-fun message_countqtint (message_count) Int)
(assert (forall ((i message_count)) (and (<= 0 (message_countqtint i)) (<= (message_countqtint i) 16))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 16)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (message_count message_count) Bool)
(declare-const dummy2 message_count)
(declare-datatypes () ((message_count__ref (mk_message_count__ref (message_count__content message_count)))))
(define-fun message_count__ref___projection ((a message_count__ref)) message_count (message_count__content a))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array (_ BitVec 8) integer))))))
(declare-fun slide ((Array (_ BitVec 8) integer) (_ BitVec 8) (_ BitVec 8)) (Array (_ BitVec 8) integer))
(assert (forall ((a (Array (_ BitVec 8) integer))) (forall ((first (_ BitVec 8))) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array (_ BitVec 8) integer))) (forall ((old_first (_ BitVec 8))) (forall ((new_first (_ BitVec 8))) (forall ((i (_ BitVec 8))) (! (= (select (slide a old_first new_first) i) (select a (bvsub i (bvsub new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array (_ BitVec 8) integer)) (a__first (_ BitVec 8)) (a__last (_ BitVec 8)) (b (Array (_ BitVec 8) integer)) (b__first (_ BitVec 8)) (b__last (_ BitVec 8))) Bool (ite (and (ite (bvule a__first a__last) (and (bvule b__first b__last) (= (bvsub a__last a__first) (bvsub b__last b__first))) (bvugt b__first b__last)) (forall ((temp___idx_154 (_ BitVec 8))) (=> (and (bvule a__first temp___idx_154) (bvule temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (bvadd (bvsub b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array (_ BitVec 8) integer)) (b (Array (_ BitVec 8) integer))) (forall ((a__first (_ BitVec 8)) (a__last (_ BitVec 8)) (b__first (_ BitVec 8)) (b__last (_ BitVec 8))) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (bvule a__first a__last) (and (bvule b__first b__last) (= (bvsub a__last a__first) (bvsub b__last b__first))) (bvugt b__first b__last)) (forall ((temp___idx_154 (_ BitVec 8))) (=> (and (bvule a__first temp___idx_154) (bvule temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (bvadd (bvsub b__first a__first) temp___idx_154)))))))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__communications__mailboxT__messages (Array (_ BitVec 8) integer)) (rec__communications__mailboxT__next_in message_index) (rec__communications__mailboxT__next_out message_index) (rec__communications__mailboxT__count message_count)))))
(define-fun us_split_fields_Messages__projection ((a us_split_fields)) (Array (_ BitVec 8) integer) (rec__communications__mailboxT__messages a))
(define-fun us_split_fields_Next_In__projection ((a us_split_fields)) message_index (rec__communications__mailboxT__next_in a))
(define-fun us_split_fields_Next_Out__projection ((a us_split_fields)) message_index (rec__communications__mailboxT__next_out a))
(define-fun us_split_fields_Count__projection ((a us_split_fields)) message_count (rec__communications__mailboxT__count a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const communications__mailboxT__messages__first__bit Int)
(declare-const communications__mailboxT__messages__last__bit Int)
(declare-const communications__mailboxT__messages__position Int)
(assert (<= 0 communications__mailboxT__messages__first__bit))
(assert (< communications__mailboxT__messages__first__bit communications__mailboxT__messages__last__bit))
(assert (<= 0 communications__mailboxT__messages__position))
(declare-const communications__mailboxT__next_in__first__bit Int)
(declare-const communications__mailboxT__next_in__last__bit Int)
(declare-const communications__mailboxT__next_in__position Int)
(assert (<= 0 communications__mailboxT__next_in__first__bit))
(assert (< communications__mailboxT__next_in__first__bit communications__mailboxT__next_in__last__bit))
(assert (<= 0 communications__mailboxT__next_in__position))
(declare-const communications__mailboxT__next_out__first__bit Int)
(declare-const communications__mailboxT__next_out__last__bit Int)
(declare-const communications__mailboxT__next_out__position Int)
(assert (<= 0 communications__mailboxT__next_out__first__bit))
(assert (< communications__mailboxT__next_out__first__bit communications__mailboxT__next_out__last__bit))
(assert (<= 0 communications__mailboxT__next_out__position))
(declare-const communications__mailboxT__count__first__bit Int)
(declare-const communications__mailboxT__count__last__bit Int)
(declare-const communications__mailboxT__count__position Int)
(assert (<= 0 communications__mailboxT__count__first__bit))
(assert (< communications__mailboxT__count__first__bit communications__mailboxT__count__last__bit))
(assert (<= 0 communications__mailboxT__count__position))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-datatypes () ((mailboxT__ref (mk_mailboxT__ref (mailboxT__content us_rep)))))
(define-fun mailboxT__ref___projection ((a mailboxT__ref)) us_rep (mailboxT__content a))
(declare-fun item_count (us_rep) Int)
(declare-fun item_count__function_guard (Int us_rep) Bool)
(declare-fun to_rep1 (message_index) (_ BitVec 8))
(declare-fun of_rep1 ((_ BitVec 8)) message_index)
(assert (forall ((x message_index)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x message_index)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x (_ BitVec 8))) (! (let ((y (bvurem x #x10))) (=> (in_range1 y) (= (to_rep1 (of_rep1 x)) y))) :pattern ((to_rep1 (of_rep1 x))))))
(define-fun to_int2 ((x message_index)) Int (bv2nat (to_rep1 x)))
(assert (forall ((x message_index)) (! (in_range_int (to_int2 x)) :pattern ((to_int2 x)))))
(define-fun to_rep2 ((x message_count)) Int (message_countqtint x))
(declare-fun of_rep2 (Int) message_count)
(assert (forall ((x message_count)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x message_count)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-fun temp_____aggregate_def_229 (Int) (Array (_ BitVec 8) integer))
(define-fun default_initial_assumption ((temp___expr_227 us_rep) (temp___skip_top_level_228 Bool)) Bool (and (and (and (= (rec__communications__mailboxT__messages (us_split_fields1 temp___expr_227)) (temp_____aggregate_def_229 0)) (= (to_rep1 (rec__communications__mailboxT__next_in (us_split_fields1 temp___expr_227))) #x00)) (= (to_rep1 (rec__communications__mailboxT__next_out (us_split_fields1 temp___expr_227))) #x00)) (= (to_rep2 (rec__communications__mailboxT__count (us_split_fields1 temp___expr_227))) 0)))
(declare-sort priority 0)
(declare-fun priorityqtint (priority) Int)
(assert (forall ((i priority)) (and (<= 0 (priorityqtint i)) (<= (priorityqtint i) 97))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 97)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (priority priority) Bool)
(declare-const dummy3 priority)
(declare-datatypes () ((priority__ref (mk_priority__ref (priority__content priority)))))
(define-fun priority__ref___projection ((a priority__ref)) priority (priority__content a))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant1 ((temp___expr_201 (_ BitVec 8)) (temp___is_init_197 Bool) (temp___skip_constant_198 Bool) (temp___do_toplevel_199 Bool) (temp___do_typ_inv_200 Bool)) Bool (=> (or (= temp___is_init_197 true) (bvule #x00 #x0F)) (in_range1 temp___expr_201)))
(define-fun dynamic_invariant2 ((temp___expr_208 Int) (temp___is_init_204 Bool) (temp___skip_constant_205 Bool) (temp___do_toplevel_206 Bool) (temp___do_typ_inv_207 Bool)) Bool (=> (or (= temp___is_init_204 true) (<= 0 16)) (in_range2 temp___expr_208)))
(assert (forall ((self__ us_rep)) (! (dynamic_invariant2 (item_count self__) true false true true) :pattern ((item_count self__)))))
(assert (forall ((self__ us_rep)) (! (= (item_count self__) (to_rep2 (rec__communications__mailboxT__count (us_split_fields1 self__)))) :pattern ((item_count self__)))))
(declare-const rliteral integer)
(assert (= (integerqtint rliteral) 0))
(assert (forall ((temp___231 Int)) (=> (dynamic_invariant temp___231 true true true true) (forall ((temp___232 (_ BitVec 8))) (= (select (temp_____aggregate_def_229 temp___231) temp___232) rliteral)))))
(define-fun dynamic_invariant3 ((temp___expr_187 Int) (temp___is_init_183 Bool) (temp___skip_constant_184 Bool) (temp___do_toplevel_185 Bool) (temp___do_typ_inv_186 Bool)) Bool (=> (or (= temp___is_init_183 true) (<= 0 97)) (in_range3 temp___expr_187)))
(assert (not true))
(check-sat)
(exit)
