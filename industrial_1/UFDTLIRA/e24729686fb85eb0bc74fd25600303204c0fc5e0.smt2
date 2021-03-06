;; This file has been translated by CVC4 from an earlier
;; version of SMTLIB to 2.6 using the script
;; translate_benchmarks.py in repo smtlib_schanda.

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :source |Benchmarks generated from industrial code by Florian Schanda using SPARK 2014 and an SMTLIB Obfuscation Script|)
(set-info :category industrial)
(set-info :status unsat)
(set-logic UFDTLIRA)

(declare-datatypes ((potato_1 0)) (((mk_potato_1))))

(declare-sort potato_2 0)
(declare-fun spoon_1 (potato_2 potato_2) Bool)
(declare-fun cat_2 () potato_2)
(declare-sort potato_3 0)
(declare-datatypes ((potato_4 0)) (((mk_potato_4 (get_potato_4_a potato_3)))))

(declare-sort potato_5 0)
(declare-datatypes ((potato_6 0)) (((mk_potato_6 (get_potato_6_a Int)))))

(declare-datatypes ((potato_7 0)) (((mk_potato_7 (get_potato_7_a Bool)))))

(declare-datatypes ((potato_8 0)) (((mk_potato_8 (get_potato_8_a Real)))))

(declare-datatypes ((potato_9 0)) (((mk_potato_9 (get_potato_9_a potato_2)))))

(define-fun spoon_3 ((kitten_1 potato_6)) Int (get_potato_6_a kitten_1))
(define-fun spoon_4 ((kitten_2 potato_7)) Bool (get_potato_7_a kitten_2))
(define-fun spoon_5 ((kitten_3 potato_8)) Real (get_potato_8_a kitten_3))
(define-fun spoon_6 ((kitten_4 potato_9)) potato_2 (get_potato_9_a kitten_4))
(declare-sort potato_10 0)
(declare-fun spoon_7 (potato_10) Int)
(assert (forall ((kitten_5 potato_10)) (let ((_let_0 (spoon_7 kitten_5))) (and (<= 0 _let_0) (<= _let_0 999))) ))
(define-fun spoon_8 ((kitten_6 Int)) Bool (and (<= 0 kitten_6) (<= kitten_6 999)))
(declare-fun spoon_9 (Int) potato_5)
(declare-fun spoon_10 (potato_5) Bool)
(declare-fun spoon_11 (potato_5) Int)
(declare-fun spoon_12 (potato_10 potato_10) Bool)
(declare-fun cat_13 () potato_10)
(declare-datatypes ((potato_11 0)) (((mk_potato_11 (get_potato_11_a potato_10)))))

(define-fun spoon_14 ((kitten_7 potato_11)) potato_10 (get_potato_11_a kitten_7))
(define-fun spoon_15 ((kitten_8 Int) (kitten_9 Bool) (kitten_10 Bool) (kitten_11 Bool) (kitten_12 Bool)) Bool (=> (or (= kitten_9 true) (<= 0 999)) (spoon_8 kitten_8)))
(declare-fun cat_16 () Int)
(declare-fun cat_17 () Int)
(declare-fun cat_18 () Int)
(declare-fun cat_19 () Int)
(declare-fun cat_20 () Int)
(declare-fun cat_21 () Int)
(assert (spoon_8 cat_16))
(assert (spoon_8 cat_18))
(assert (=> (<= 0 999) (spoon_8 cat_21)))
(assert (<= cat_16 (- 999 cat_18)))
(assert (not (spoon_8 (+ cat_16 cat_18))))
(check-sat)
(exit)
