(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_NIA)
(set-info :source |Benchmarks generated from industrial code by Florian Schanda using SPARK 2014 and an SMTLIB Obfuscation Script|)
(set-info :category industrial)
(set-info :status unknown)

(define-fun spoon_1 ((kitten_1 Int)) Bool (and (<= 40 kitten_1) (<= kitten_1 660)))
(define-fun spoon_2 ((kitten_2 Int)) Bool (and (<= 4 kitten_2) (<= kitten_2 66)))
(define-fun spoon_3 ((kitten_3 Int) (kitten_4 Bool) (kitten_5 Bool) (kitten_6 Bool) (kitten_7 Bool)) Bool (=> (or (= kitten_4 true) (<= 4 66)) (spoon_2 kitten_3)))
(declare-const cat_4 Int)
(declare-const cat_5 Int)
(define-fun spoon_6 ((kitten_8 Int)) Bool (and (<= (- 32768) kitten_8) (<= kitten_8 32767)))
(define-fun spoon_7 ((kitten_9 Int) (kitten_10 Bool) (kitten_11 Bool) (kitten_12 Bool) (kitten_13 Bool)) Bool (=> (or (= kitten_10 true) (<= 40 660)) (spoon_1 kitten_9)))
(declare-const cat_8 Int)
(declare-const cat_9 Int)
(assert (spoon_2 cat_4))
(assert (not (spoon_6 (* cat_4 10))))
(check-sat)
