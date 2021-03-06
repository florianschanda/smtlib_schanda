(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPNIRA)
(set-info :source |Benchmarks generated from industrial code by Florian Schanda using SPARK 2014 and an SMTLIB Obfuscation Script|)
(set-info :category industrial)
(set-info :status unknown)

(define-fun spoon_1 ((kitten_1 Float32)) Bool (not (or (fp.isInfinite kitten_1) (fp.isNaN kitten_1))))
(define-fun spoon_2 ((kitten_2 Float32)) Bool (or (fp.isZero kitten_2) (and (fp.isNormal kitten_2) (= kitten_2 (fp.roundToIntegral RNE kitten_2)))))
(define-fun spoon_3 ((kitten_3 Int)) Bool (and (<= 3 kitten_3) (<= kitten_3 30)))
(define-fun spoon_4 ((kitten_4 Float32)) Bool (and (fp.isInfinite kitten_4) (fp.isPositive kitten_4)))
(define-fun spoon_5 ((kitten_5 Float32)) Bool (and (fp.isInfinite kitten_5) (fp.isNegative kitten_5)))
(define-fun spoon_6 ((kitten_6 Float32)) Bool (and (fp.isZero kitten_6) (fp.isPositive kitten_6)))
(define-fun spoon_7 ((kitten_7 Float32)) Bool (and (fp.isZero kitten_7) (fp.isNegative kitten_7)))
(declare-const cat_8 Int)
(define-fun spoon_9 ((kitten_8 Int)) Bool (and (<= (- cat_8) kitten_8) (<= kitten_8 cat_8)))
(define-fun spoon_10 ((kitten_9 Int)) Bool (and (<= (- 16777216) kitten_9) (<= kitten_9 16777216)))
(define-fun spoon_11 ((kitten_10 Float32) (kitten_11 Float32)) Bool (or (and (fp.isPositive kitten_10) (fp.isPositive kitten_11)) (and (fp.isNegative kitten_10) (fp.isNegative kitten_11))))
(define-fun spoon_12 ((kitten_12 Float32) (kitten_13 Float32)) Bool (or (and (fp.isPositive kitten_12) (fp.isNegative kitten_13)) (and (fp.isNegative kitten_12) (fp.isPositive kitten_13))))
(define-fun spoon_13 ((kitten_14 Float32) (kitten_15 Float32) (kitten_16 Float32)) Bool (and (=> (spoon_11 kitten_15 kitten_16) (fp.isPositive kitten_14)) (=> (spoon_12 kitten_15 kitten_16) (fp.isNegative kitten_14))))
(define-fun spoon_14 ((kitten_17 Real)) Real (* kitten_17 kitten_17))
(define-fun spoon_15 ((kitten_18 Float32) (kitten_19 Real)) Bool (or (and (fp.isPositive kitten_18) (< 0.0 kitten_19)) (and (fp.isNegative kitten_18) (< kitten_19 0.0))))
(define-fun spoon_16 ((kitten_20 Float32)) Bool (and (spoon_1 kitten_20) (and (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) kitten_20) (fp.leq kitten_20 (fp #b0 #b10001011 #b00000000000000000000000)))))
(declare-const cat_17 Int)
(declare-const cat_18 Int)
(assert (<= 0 cat_17))
(assert (<= 0 cat_18))
(declare-const cat_19 Int)
(declare-const cat_20 Int)
(declare-const cat_21 Int)
(assert (<= 0 cat_19))
(assert (< cat_19 cat_20))
(assert (<= 0 cat_21))
(declare-const cat_22 Int)
(declare-const cat_23 Int)
(declare-const cat_24 Int)
(assert (<= 0 cat_22))
(assert (< cat_22 cat_23))
(assert (<= 0 cat_24))
(declare-const cat_25 Int)
(declare-const cat_26 Int)
(declare-const cat_27 Int)
(assert (<= 0 cat_25))
(assert (<= 0 cat_26))
(assert (<= 0 cat_27))
(declare-const cat_28 Int)
(declare-const cat_29 Int)
(assert (<= 0 cat_28))
(assert (<= 0 cat_29))
(declare-const cat_30 Int)
(declare-const cat_31 Int)
(declare-const cat_32 Int)
(assert (<= 0 cat_30))
(assert (< cat_30 cat_31))
(assert (<= 0 cat_32))
(declare-const cat_33 Int)
(declare-const cat_34 Int)
(declare-const cat_35 Int)
(assert (<= 0 cat_33))
(assert (< cat_33 cat_34))
(assert (<= 0 cat_35))
(define-fun spoon_36 ((kitten_21 Int)) Bool (and (<= 0 kitten_21) (<= kitten_21 150000)))
(declare-const cat_37 Int)
(declare-const cat_38 Int)
(assert (<= 0 cat_37))
(assert (<= 0 cat_38))
(declare-const cat_39 Int)
(declare-const cat_40 Int)
(declare-const cat_41 Int)
(assert (<= 0 cat_39))
(assert (< cat_39 cat_40))
(assert (<= 0 cat_41))
(declare-const cat_42 Int)
(declare-const cat_43 Int)
(declare-const cat_44 Int)
(assert (<= 0 cat_42))
(assert (< cat_42 cat_43))
(assert (<= 0 cat_44))
(declare-const cat_45 Int)
(declare-const cat_46 Int)
(assert (<= 0 cat_45))
(assert (<= 0 cat_46))
(declare-const cat_47 Int)
(declare-const cat_48 Int)
(declare-const cat_49 Int)
(assert (<= 0 cat_47))
(assert (< cat_47 cat_48))
(assert (<= 0 cat_49))
(declare-const cat_50 Int)
(declare-const cat_51 Int)
(declare-const cat_52 Int)
(assert (<= 0 cat_50))
(assert (< cat_50 cat_51))
(assert (<= 0 cat_52))
(define-fun spoon_53 ((kitten_22 Int) (kitten_23 Bool) (kitten_24 Bool) (kitten_25 Bool) (kitten_26 Bool)) Bool (=> (or (= kitten_23 true) (<= 0 150000)) (spoon_36 kitten_22)))
(declare-const cat_54 Int)
(declare-const cat_55 Int)
(declare-const cat_56 Int)
(declare-const cat_57 Int)
(define-fun spoon_58 ((kitten_27 Float32) (kitten_28 Bool) (kitten_29 Bool) (kitten_30 Bool) (kitten_31 Bool)) Bool (=> (or (= kitten_28 true) (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) (fp #b0 #b10001011 #b00000000000000000000000))) (spoon_16 kitten_27)))
(define-fun spoon_59 ((kitten_32 Int) (kitten_33 Bool) (kitten_34 Bool) (kitten_35 Bool) (kitten_36 Bool)) Bool (=> (or (= kitten_33 true) (<= 3 30)) (spoon_3 kitten_32)))
(declare-const cat_60 Int)
(declare-const cat_61 Int)
(assert (spoon_36 cat_54))
(assert (not false))
(check-sat)
