;; This file has been translated by CVC4 from an earlier
;; version of SMTLIB to 2.6 using the script
;; translate_benchmarks.py in repo smtlib_schanda.

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :source |Benchmarks generated from industrial code by Florian Schanda using SPARK 2014 and an SMTLIB Obfuscation Script|)
(set-info :category industrial)
(set-info :status unsat)
(set-logic UFDTNIRA)

(define-fun spoon_1 ((kitten_1 Int) (kitten_2 Int)) Int (ite (>= kitten_1 0) (div kitten_1 kitten_2) (- (div (- kitten_1) kitten_2))))
(define-fun spoon_2 ((kitten_3 Int) (kitten_4 Int)) Int (ite (>= kitten_3 0) (mod kitten_3 kitten_4) (- (mod (- kitten_3) kitten_4))))
(declare-datatypes ((potato_1 0)) (((mk_potato_1))))

(declare-sort potato_2 0)
(declare-fun spoon_3 (potato_2 potato_2) Bool)
(declare-fun cat_4 () potato_2)
(declare-sort potato_3 0)
(declare-datatypes ((potato_4 0)) (((mk_potato_4 (get_potato_4_a potato_3)))))

(declare-sort potato_5 0)
(declare-datatypes ((potato_6 0)) (((mk_potato_6 (get_potato_6_a Int)))))

(declare-datatypes ((potato_7 0)) (((mk_potato_7 (get_potato_7_a Bool)))))

(declare-datatypes ((potato_8 0)) (((mk_potato_8 (get_potato_8_a Real)))))

(declare-datatypes ((potato_9 0)) (((mk_potato_9 (get_potato_9_a potato_2)))))

(define-fun spoon_5 ((kitten_5 potato_6)) Int (get_potato_6_a kitten_5))
(define-fun spoon_6 ((kitten_6 potato_7)) Bool (get_potato_7_a kitten_6))
(define-fun spoon_7 ((kitten_7 potato_8)) Real (get_potato_8_a kitten_7))
(define-fun spoon_8 ((kitten_8 potato_9)) potato_2 (get_potato_9_a kitten_8))
(define-fun spoon_9 ((kitten_9 Int) (kitten_10 Int)) Int (let ((_let_0 (mod kitten_9 kitten_10))) (ite (< 0 kitten_10) _let_0 (+ _let_0 kitten_10))))
(declare-sort potato_10 0)
(declare-fun spoon_10 (potato_10) Int)
(assert (forall ((kitten_11 potato_10)) (let ((_let_0 (spoon_10 kitten_11))) (and (<= 40 _let_0) (<= _let_0 660))) ))
(define-fun spoon_11 ((kitten_12 Int)) Bool (and (<= 40 kitten_12) (<= kitten_12 660)))
(declare-fun spoon_12 (Int) potato_5)
(declare-fun spoon_13 (potato_5) Bool)
(declare-fun spoon_14 (potato_5) Int)
(declare-fun spoon_15 (potato_10 potato_10) Bool)
(declare-fun cat_16 () potato_10)
(declare-datatypes ((potato_11 0)) (((mk_potato_11 (get_potato_11_a potato_10)))))

(define-fun spoon_17 ((kitten_13 potato_11)) potato_10 (get_potato_11_a kitten_13))
(declare-sort potato_12 0)
(declare-fun spoon_18 (potato_12) Int)
(assert (forall ((kitten_14 potato_12)) (let ((_let_0 (spoon_18 kitten_14))) (and (<= 4000 _let_0) (<= _let_0 66000))) ))
(define-fun spoon_19 ((kitten_15 Int)) Bool (and (<= 4000 kitten_15) (<= kitten_15 66000)))
(declare-fun spoon_20 (Int) potato_5)
(declare-fun spoon_21 (potato_5) Bool)
(declare-fun spoon_22 (potato_5) Int)
(declare-fun spoon_23 (potato_12 potato_12) Bool)
(declare-fun cat_24 () potato_12)
(declare-datatypes ((potato_13 0)) (((mk_potato_13 (get_potato_13_a potato_12)))))

(define-fun spoon_25 ((kitten_16 potato_13)) potato_12 (get_potato_13_a kitten_16))
(define-fun spoon_26 ((kitten_17 Int) (kitten_18 Bool) (kitten_19 Bool) (kitten_20 Bool) (kitten_21 Bool)) Bool (=> (or (= kitten_18 true) (<= 4000 66000)) (spoon_19 kitten_17)))
(declare-fun cat_27 () Int)
(declare-fun cat_28 () Int)
(define-fun spoon_29 ((kitten_22 Int) (kitten_23 Bool) (kitten_24 Bool) (kitten_25 Bool) (kitten_26 Bool)) Bool (=> (or (= kitten_23 true) (<= 40 660)) (spoon_11 kitten_22)))
(assert (spoon_19 cat_27))
(assert (not (spoon_11 (spoon_1 cat_27 100))))
(check-sat)
(exit)
