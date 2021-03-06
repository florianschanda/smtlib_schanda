(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPNIRA)
(set-info :source |Benchmarks generated from industrial code by Florian Schanda using SPARK 2014 and an SMTLIB Obfuscation Script|)
(set-info :category industrial)
(set-info :status unknown)

(define-fun spoon_1 ((kitten_1 Float32)) Bool (not (or (fp.isInfinite kitten_1) (fp.isNaN kitten_1))))
(define-fun spoon_2 ((kitten_2 Float32)) Bool (or (fp.isZero kitten_2) (and (fp.isNormal kitten_2) (= kitten_2 (fp.roundToIntegral RNE kitten_2)))))
(define-fun spoon_3 ((kitten_3 Float32)) Bool (and (fp.isInfinite kitten_3) (fp.isPositive kitten_3)))
(define-fun spoon_4 ((kitten_4 Float32)) Bool (and (fp.isInfinite kitten_4) (fp.isNegative kitten_4)))
(define-fun spoon_5 ((kitten_5 Float32)) Bool (and (fp.isZero kitten_5) (fp.isPositive kitten_5)))
(define-fun spoon_6 ((kitten_6 Float32)) Bool (and (fp.isZero kitten_6) (fp.isNegative kitten_6)))
(declare-const cat_7 Int)
(define-fun spoon_8 ((kitten_7 Int)) Bool (and (<= (- cat_7) kitten_7) (<= kitten_7 cat_7)))
(define-fun spoon_9 ((kitten_8 Int)) Bool (and (<= (- 16777216) kitten_8) (<= kitten_8 16777216)))
(define-fun spoon_10 ((kitten_9 Float32) (kitten_10 Float32)) Bool (or (and (fp.isPositive kitten_9) (fp.isPositive kitten_10)) (and (fp.isNegative kitten_9) (fp.isNegative kitten_10))))
(define-fun spoon_11 ((kitten_11 Float32) (kitten_12 Float32)) Bool (or (and (fp.isPositive kitten_11) (fp.isNegative kitten_12)) (and (fp.isNegative kitten_11) (fp.isPositive kitten_12))))
(define-fun spoon_12 ((kitten_13 Float32) (kitten_14 Float32) (kitten_15 Float32)) Bool (and (=> (spoon_10 kitten_14 kitten_15) (fp.isPositive kitten_13)) (=> (spoon_11 kitten_14 kitten_15) (fp.isNegative kitten_13))))
(define-fun spoon_13 ((kitten_16 Real)) Real (* kitten_16 kitten_16))
(define-fun spoon_14 ((kitten_17 Float32) (kitten_18 Real)) Bool (or (and (fp.isPositive kitten_17) (< 0.0 kitten_18)) (and (fp.isNegative kitten_17) (< kitten_18 0.0))))
(define-fun spoon_15 ((kitten_19 Float32) (kitten_20 Bool) (kitten_21 Bool) (kitten_22 Bool) (kitten_23 Bool)) Bool (=> (or (= kitten_20 true) (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))) (spoon_1 kitten_19)))
(define-fun spoon_16 ((kitten_24 Float32)) Bool (and (spoon_1 kitten_24) (and (fp.leq (fp #b0 #b01110101 #b00000110001001001000100) kitten_24) (fp.leq kitten_24 (fp #b0 #b10010010 #b11101000010010000000000)))))
(define-fun spoon_17 ((kitten_25 Float32) (kitten_26 Bool) (kitten_27 Bool) (kitten_28 Bool) (kitten_29 Bool)) Bool (=> (or (= kitten_26 true) (fp.leq (fp #b0 #b01110101 #b00000110001001001000100) (fp #b0 #b10010010 #b11101000010010000000000))) (spoon_16 kitten_25)))
(define-fun spoon_18 ((kitten_30 Float32)) Bool (and (spoon_1 kitten_30) (and (fp.leq (fp.neg (fp #b0 #b10000000 #b01000000000000000000000)) kitten_30) (fp.leq kitten_30 (fp #b0 #b10000001 #b01100000000000000000000)))))
(define-fun spoon_19 ((kitten_31 Float32) (kitten_32 Bool) (kitten_33 Bool) (kitten_34 Bool) (kitten_35 Bool)) Bool (=> (or (= kitten_32 true) (fp.leq (fp.neg (fp #b0 #b10000000 #b01000000000000000000000)) (fp #b0 #b10000001 #b01100000000000000000000))) (spoon_18 kitten_31)))
(define-fun spoon_20 ((kitten_36 Float32)) Bool (and (spoon_1 kitten_36) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_36) (fp.leq kitten_36 (fp #b0 #b11111110 #b11111111111111111111111)))))
(define-fun spoon_21 ((kitten_37 Float32) (kitten_38 Bool) (kitten_39 Bool) (kitten_40 Bool) (kitten_41 Bool)) Bool (=> (or (= kitten_38 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b11111110 #b11111111111111111111111))) (spoon_20 kitten_37)))
(declare-const cat_22 Float32)
(declare-const cat_23 Int)
(declare-const cat_24 Float32)
(declare-const cat_25 Int)
(declare-const cat_26 Float32)
(declare-const cat_27 Int)
(declare-const cat_28 Int)
(assert (= cat_26 (fp #b0 #b01100100 #b01010111100110001110111)))
(declare-const cat_29 Float32)
(declare-const cat_30 Float32)
(declare-const cat_31 Float32)
(assert (spoon_16 cat_22))
(assert (spoon_18 cat_24))
(assert (spoon_18 cat_26))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b11111110 #b11111111111111111111111)) (spoon_20 cat_29)))
(assert (not (fp.lt (fp.abs cat_24) cat_26)))
(assert (not (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) cat_22)))
(check-sat)
