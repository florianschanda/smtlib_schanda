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
(define-fun spoon_15 ((kitten_19 Int)) Bool (or (= kitten_19 0) (= kitten_19 1)))
(define-fun spoon_16 ((kitten_20 Float32) (kitten_21 Bool) (kitten_22 Bool) (kitten_23 Bool) (kitten_24 Bool)) Bool (=> (or (= kitten_21 true) (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))) (spoon_1 kitten_20)))
(define-fun spoon_17 ((kitten_25 Float32)) Bool (and (spoon_1 kitten_25) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_25) (fp.leq kitten_25 (fp #b0 #b10000110 #b01101000000000000000000)))))
(define-fun spoon_18 ((kitten_26 Float32) (kitten_27 Bool) (kitten_28 Bool) (kitten_29 Bool) (kitten_30 Bool)) Bool (=> (or (= kitten_27 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000110 #b01101000000000000000000))) (spoon_17 kitten_26)))
(define-fun spoon_19 ((kitten_31 Float32)) Bool (and (spoon_1 kitten_31) (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) kitten_31) (fp.leq kitten_31 (fp #b0 #b01111111 #b00000000000000000000000)))))
(define-fun spoon_20 ((kitten_32 Float32) (kitten_33 Bool) (kitten_34 Bool) (kitten_35 Bool) (kitten_36 Bool)) Bool (=> (or (= kitten_33 true) (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (fp #b0 #b01111111 #b00000000000000000000000))) (spoon_19 kitten_32)))
(define-fun spoon_21 ((kitten_37 Float32)) Bool (and (spoon_1 kitten_37) (and (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) kitten_37) (fp.leq kitten_37 (fp #b0 #b10001011 #b00000000000000000000000)))))
(declare-const cat_22 Int)
(declare-const cat_23 Int)
(assert (<= 0 cat_22))
(assert (<= 0 cat_23))
(declare-const cat_24 Int)
(declare-const cat_25 Int)
(declare-const cat_26 Int)
(assert (<= 0 cat_24))
(assert (< cat_24 cat_25))
(assert (<= 0 cat_26))
(declare-const cat_27 Int)
(declare-const cat_28 Int)
(declare-const cat_29 Int)
(assert (<= 0 cat_27))
(assert (< cat_27 cat_28))
(assert (<= 0 cat_29))
(define-fun spoon_30 ((kitten_38 Float32)) Bool (and (spoon_1 kitten_38) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_38) (fp.leq kitten_38 (fp #b0 #b10001100 #b01101010100000000000000)))))
(define-fun spoon_31 ((kitten_39 Float32) (kitten_40 Bool) (kitten_41 Bool) (kitten_42 Bool) (kitten_43 Bool)) Bool (=> (or (= kitten_40 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001100 #b01101010100000000000000))) (spoon_30 kitten_39)))
(define-fun spoon_32 ((kitten_44 Float32)) Bool (and (spoon_1 kitten_44) (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) kitten_44) (fp.leq kitten_44 (fp #b0 #b10000111 #b01101000000000000000000)))))
(define-fun spoon_33 ((kitten_45 Float32) (kitten_46 Bool) (kitten_47 Bool) (kitten_48 Bool) (kitten_49 Bool)) Bool (=> (or (= kitten_46 true) (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000111 #b01101000000000000000000))) (spoon_32 kitten_45)))
(define-fun spoon_34 ((kitten_50 Float32)) Bool (and (spoon_1 kitten_50) (and (fp.leq (fp.neg (fp #b0 #b10001100 #b00000000000000000000000)) kitten_50) (fp.leq kitten_50 (fp #b0 #b10001100 #b00000000000000000000000)))))
(declare-const cat_35 Int)
(declare-const cat_36 Int)
(declare-const cat_37 Int)
(define-fun spoon_38 ((kitten_51 Float32)) Bool (and (spoon_1 kitten_51) (and (fp.leq (fp.neg (fp #b0 #b10011010 #b00000000000000000000000)) kitten_51) (fp.leq kitten_51 (fp #b0 #b10011010 #b00000000000000000000000)))))
(define-fun spoon_39 ((kitten_52 Float32) (kitten_53 Bool) (kitten_54 Bool) (kitten_55 Bool) (kitten_56 Bool)) Bool (=> (or (= kitten_53 true) (fp.leq (fp.neg (fp #b0 #b10011010 #b00000000000000000000000)) (fp #b0 #b10011010 #b00000000000000000000000))) (spoon_38 kitten_52)))
(declare-const cat_40 Int)
(declare-const cat_41 Int)
(assert (<= 0 cat_40))
(assert (<= 0 cat_41))
(declare-const cat_42 Int)
(declare-const cat_43 Int)
(declare-const cat_44 Int)
(assert (<= 0 cat_42))
(assert (< cat_42 cat_43))
(assert (<= 0 cat_44))
(declare-const cat_45 Int)
(declare-const cat_46 Int)
(declare-const cat_47 Int)
(assert (<= 0 cat_45))
(assert (< cat_45 cat_46))
(assert (<= 0 cat_47))
(declare-const cat_48 Int)
(declare-const cat_49 Int)
(declare-const cat_50 Int)
(declare-const cat_51 Int)
(declare-const cat_52 Int)
(declare-const cat_53 Int)
(declare-const cat_54 Float32)
(declare-const cat_55 Int)
(define-fun spoon_56 ((kitten_57 Float32)) Bool (and (spoon_1 kitten_57) (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000001010100)) kitten_57) (fp.leq kitten_57 (fp #b0 #b01111111 #b00000000000000001010100)))))
(define-fun spoon_57 ((kitten_58 Float32) (kitten_59 Bool) (kitten_60 Bool) (kitten_61 Bool) (kitten_62 Bool)) Bool (=> (or (= kitten_59 true) (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000001010100)) (fp #b0 #b01111111 #b00000000000000001010100))) (spoon_56 kitten_58)))
(declare-const cat_58 Int)
(declare-const cat_59 Int)
(assert (= cat_54 (fp #b0 #b01101110 #b01001111100010110101100)))
(define-fun spoon_60 ((kitten_63 Float32) (kitten_64 Bool) (kitten_65 Bool) (kitten_66 Bool) (kitten_67 Bool)) Bool (=> (or (= kitten_64 true) (fp.leq (fp.neg (fp #b0 #b10001100 #b00000000000000000000000)) (fp #b0 #b10001100 #b00000000000000000000000))) (spoon_34 kitten_63)))
(define-fun spoon_61 ((kitten_68 Float32) (kitten_69 Bool) (kitten_70 Bool) (kitten_71 Bool) (kitten_72 Bool)) Bool (=> (or (= kitten_69 true) (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) (fp #b0 #b10001011 #b00000000000000000000000))) (spoon_21 kitten_68)))
(declare-const cat_62 Float32)
(declare-const cat_63 Float32)
(declare-const cat_64 Float32)
(declare-const cat_65 Float32)
(declare-const cat_66 Float32)
(declare-const cat_67 Float32)
(declare-const cat_68 Float32)
(declare-const cat_69 Float32)
(declare-const cat_70 Float32)
(declare-const cat_71 Float32)
(declare-const cat_72 Float32)
(declare-const cat_73 Float32)
(declare-const cat_74 Float32)
(declare-const cat_75 Float32)
(declare-const cat_76 Float32)
(declare-const cat_77 Float32)
(declare-const cat_78 Float32)
(assert (=> (fp.leq (fp.neg (fp #b0 #b10011010 #b00000000000000000000000)) (fp #b0 #b10011010 #b00000000000000000000000)) (spoon_38 cat_62)))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001100 #b01101010100000000000000)) (spoon_30 cat_63)))
(assert (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001100 #b01101010100000000000000)) (spoon_30 cat_64)))
(assert (= cat_73 cat_65))
(assert (= cat_74 (fp #b0 #b00000000 #b00000000000000000000000)))
(assert (spoon_32 cat_74))
(assert (spoon_1 cat_54))
(assert (=> (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000001010100)) (fp #b0 #b01111111 #b00000000000000001010100)) (spoon_56 cat_66)))
(assert (=> (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (fp #b0 #b01111111 #b00000000000000000000000)) (spoon_19 cat_67)))
(assert (= cat_76 cat_68))
(assert (= cat_77 cat_69))
(assert (fp.lt (fp #b0 #b01110101 #b00000110001001001101111) cat_76))
(assert (fp.lt (fp #b0 #b01110101 #b00000110001001001101111) cat_77))
(assert (not (not (fp.isZero (fp.mul RNE cat_76 cat_77)))))
(check-sat)
